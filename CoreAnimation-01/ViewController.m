//
//  ViewController.m
//  CoreAnimation-01
//
//  Created by tlab on 2020/8/6.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CAEmitterLayer *rainLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //红包雨
//    [self hongbaoRain];
    
    //综合
    [self allRain];
}

- (void)hongbaoRain
{
    //1.设置CAEmitterLayer
    self.rainLayer = [CAEmitterLayer layer];
    
    //2.在背景图上添加粒子图层
    [self.view.layer addSublayer:self.rainLayer];
    
    //3.发射形状--线性
    self.rainLayer.emitterShape = kCAEmitterLayerLine;
    self.rainLayer.emitterMode = kCAEmitterLayerSurface;
    self.rainLayer.emitterSize = self.view.frame.size;
    self.rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, -10.0f);
    
    //4.配置cell
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.contents = (id)[[UIImage imageNamed:@"hongbao.png"] CGImage];
    cell.birthRate = 1.0f;
    cell.lifetime = 20;
    cell.speed = 2;
    cell.velocity = 10.0f;
    cell.velocityRange = 10.0f;
    cell.yAcceleration = 60;
    cell.scale = 0.1f;
    cell.scaleRange = 0.0f;

    //5.添加到图层上
    self.rainLayer.emitterCells = @[cell];
}


- (void)allRain
{
    //1.设置CAEmitterLayer
    self.rainLayer = [CAEmitterLayer layer];
    
    //2.在背景图上添加粒子图层
    [self.view.layer addSublayer:self.rainLayer];
    
    //3.发射形状--线性
    self.rainLayer.emitterShape = kCAEmitterLayerLine;
    self.rainLayer.emitterMode = kCAEmitterLayerSurface;
    self.rainLayer.emitterSize = self.view.frame.size;
    self.rainLayer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, -10.0f);
    
    CAEmitterCell *hongbaoCell = [CAEmitterCell emitterCell];
    hongbaoCell.contents = (id)[[UIImage imageNamed:@"hongbao.png"] CGImage];
    hongbaoCell.birthRate = 1.0;
    hongbaoCell.lifetime = 30;
    hongbaoCell.speed = 2;
    hongbaoCell.velocity = 10.f;
    hongbaoCell.velocityRange = 10.f;
    hongbaoCell.yAcceleration = 60;
    hongbaoCell.scale = 0.1;
    hongbaoCell.scaleRange = 0.f;
    
    CAEmitterCell *jinbiCell = [CAEmitterCell emitterCell];
    jinbiCell.contents = (id)[[UIImage imageNamed:@"jinbi.png"] CGImage];
    jinbiCell.birthRate = 1.0;
    jinbiCell.lifetime = 30;
    jinbiCell.speed = 2;
    jinbiCell.velocity = 10.f;
    jinbiCell.velocityRange = 10.f;
    jinbiCell.yAcceleration = 60;
    jinbiCell.scale = 0.1;
    jinbiCell.scaleRange = 0.f;
    
    CAEmitterCell *zongziCell = [CAEmitterCell emitterCell];
    zongziCell.contents = (id)[[UIImage imageNamed:@"zongzi.jpg"] CGImage];
    zongziCell.birthRate = 1.0;
    zongziCell.lifetime = 30;
    zongziCell.speed = 2;
    zongziCell.velocity = 10.f;
    zongziCell.velocityRange = 10.f;
    zongziCell.yAcceleration = 60;
    zongziCell.scale = 0.1;
    zongziCell.scaleRange = 0.f;
    
    //4.添加到图层上
    self.rainLayer.emitterCells = @[hongbaoCell, jinbiCell, zongziCell];
}


@end
