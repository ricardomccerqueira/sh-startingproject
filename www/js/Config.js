NAMESPACE.Config={
	MEDIA_QUERIES:{
		mobile:{
			deferSetup: true,
			shouldDegrade: false,
			query: 'screen and (max-width:767px)',
			css: ['unsemantic-grid-mobile.css'],
			className: 'stylesheet-mobile'
		},

		tablet:{
			deferSetup: true,
			shouldDegrade: false,
			query: 'screen and (min-width:768px) and (max-width:1024px)',
			css: ['unsemantic-grid-tablet.css'],
			className: 'stylesheet-tablet'
		},

		desktop:{
			deferSetup: true,
			shouldDegrade: true,
			query: 'screen and (min-width:1025px)',
			css: ['unsemantic-grid-desktop.css'],
			className: 'stylesheet-desktop'
		}
	}
}
