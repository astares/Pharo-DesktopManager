accessing
bingCollection
	<script: 'self bingCollection inspect'>
	
	^(self urlsFromBING: 8) collect: [:each | 			 
			self name: each key form: (ZnEasy getJpeg: each value) ]