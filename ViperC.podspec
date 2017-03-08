Pod::Spec.new do |s|

    s.name                  = 'ViperC'
    s.version               = '1.0'
    s.summary               = 'Xcode template for VIPER Architecture written in Objective-C'
    s.homepage              = 'https://github.com/abdullahselek/ViperC'
    s.license               = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author                = {
        'Abdullah Selek' => 'abdullahselek@yahoo.com'
    }
    s.source                = {
        :git => 'https://github.com/abdullahselek/ViperC.git',
        :tag => s.version.to_s
    }
    s.ios.deployment_target = '8.0'
    s.source_files          = ['ViperC.xctemplate/*.{h,m}', 'ViperC.xctemplate/*.plist']
    s.requires_arc          = true

end