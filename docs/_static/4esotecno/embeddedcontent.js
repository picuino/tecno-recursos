/**
 * Project Name:	jActivating
 * Project URI:	http://jactivating.sourceforge.net
 * Description:	Allows website users to interact with embedded content without 'activating' it first
 * Author:		David Muñoz <donraspu AT gmail DOT com>
 * Version:		1.2.0 alpha 2 - May 16, 2007
 * License:		This software is Public Domain (no rights reserved)
 *
 * Installation: 
 * 1) Upload embeddedcontent.js into some directory on your web server.
 * 2) Include the JavaScript file in the <head> of your document like this:
 * 		<script type="text/javascript" src="embeddedcontent.js" defer="defer"></script>
 */
var jActivating =
{

	/**
	 * Declare constants
	 * IS_MSIE	checks for Internet Explorer 6 and later versions
	 * TAGS		array with affected HTML tags
	 */
	IS_MSIE : (document.removeNode && document.createAttribute) ? true : false,
	TAGS : ['object', 'embed', 'applet'],
	
	
	/**
	 * Activates embedded content reinserting it.
	 * @return void
	 */
	activateContent : function()
	{
		var i = 0;
		for(var _tagName; _tagName = jActivating.TAGS[i]; i++)
		{
			var j = 0;
			for(var _node; _node = document.getElementsByTagName(_tagName)[j]; j++)
			{
				if(jActivating.IS_MSIE)
				{
					jActivating.reinsertHtml(_node);
				}
				else
				{
					jActivating.reinsertNode(_node);
				}
			}
			
		}
		jActivating = null;
	},
	
	
	/**
	 * Sets outerHTML property.
	 * @param object	- The node
	 * @return void
	 */
	reinsertHtml : function(_node)
	{
		var _htmlCode = jActivating.getHtmlCode(_node);
		if(_htmlCode)
		{
			_node.outerHTML = _htmlCode;
		}
	},
	
	
	/**
	 * Replaces the node for a clone.
	 * @param object - The original node
	 * @return void
	 */
	reinsertNode : function(_node)
	{
		var _clone = _node.cloneNode(true);
		var _parent = _node.parentNode;
		if(_clone && _parent)
		{
			_parent.replaceChild(_clone, _node);
		}
	},
	
	
	/**
	 * Retrieves the object and its content in HTML.
	 * @param object - The analyzed node
	 * @return string - The HTML received, NULL for malformed syntax (end tag)
	 */
	getHtmlCode : function(_node)
	{
		var _htmlCode = _node.outerHTML;
		var _name = _node.nodeName.toLowerCase();
		if(_name == 'embed')
		{
			return _htmlCode;
		}
		if(_name == 'object' || _name == 'applet')
		{
			var _startTag = _htmlCode.substr(0, _htmlCode.indexOf('>') + 1);
			var _endTag = _htmlCode.substr(_htmlCode.length - 9).toLowerCase();
			// Filters malformed syntax for avoid unexpected results
			if(_endTag != '</object>' && _endTag != '</applet>')
			{
				return null;
			}
			var _innerHtml = jActivating.getInnerHtml(_node);
			_htmlCode = _startTag + _innerHtml + _endTag;
			return _htmlCode;
		}
	},
	
	
	/**
	 * Retrieves the HTML between start and end tags of the object.
	 * @param object - The analyzed node
	 * @return string - The HTML received
	 *
	 * NOTE: the innerHTML property isn't used because Internet Explorer
	 * sometimes returns a empty result.
	 */
	getInnerHtml : function(_node)
	{
		var _innerHtml = '';
		var i = 0;
		for(var _childNode; _childNode = _node.childNodes[i]; i++)
		{
			_innerHtml += _childNode.outerHTML;
		}
		return _innerHtml;
	}
}

// Execute script only for Internet Explorer (6+) and Opera (9+)
if(jActivating.IS_MSIE)
{
	jActivating.activateContent();
}
else if(window.opera)
{
	document.addEventListener('DOMContentLoaded', jActivating.activateContent, false);
}