Pod::Spec.new do |s|
s.name         = "BSScrollViewEdgePop"
s.version      = "0.0.1"
s.summary      = "A short description of BSScrollViewEdgePop."
s.description  = <<-DESC
                 解决UIScrollView滑动和系统侧滑返回冲突问题。
DESC
s.homepage     = "https://github.com/FreeBaiShun"
s.license      = "MIT"
s.author             = { "FreeBaiShun" => "851083075@qq.com" }
s.platform     = :ios, "8.0"
s.requires_arc = true
s.source       = { :git => "https://github.com/FreeBaiShun/BSScrollViewEdgePop.git", :tag => "#{s.version}" }
s.source_files  = "ScrollTest/BSScrollViewEdgePop/*.{h,m}"
end
