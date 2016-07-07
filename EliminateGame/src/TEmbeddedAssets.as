package 
{
	/**
	 * ...
	 * @author zhmq
	 * @date 2016/6/30 14:47
	 */
	public class TEmbeddedAssets 
	{
		
		//---- Constants -------------------------------------------------------
		
		[Embed(source="../assets/IconRes.xml", mimeType="application/octet-stream")]
        public static const IconRes_xml:Class;
        
        [Embed(source="../assets/IconRes.png")]
        public static const IconRes:Class;
		
		//---- Protected Methods -----------------------------------------------
		
		//---- Event Handling Methods ------------------------------------------
		
		//---- Property Accessing Methods --------------------------------------
		
		//---- Public Methods ----------------------------------------------------
	}

}