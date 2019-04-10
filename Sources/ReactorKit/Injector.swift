//
//  Injector.swift
//  ReactorKit
//
//  Created by 윤중현 on 10/04/2019.
//

import RxSwift

public class Injector<Reactor: ReactorKit.Reactor> {
  private unowned var reactor: Reactor

  public var stateBeforeTransform: ActionSubject<Reactor.State> { return reactor.stateInjectorBeforeTransform }
  public var stateAfterTransform: ActionSubject<Reactor.State> { return reactor.stateInjectorAfterTransform }
  public var actionBeforeTransform: ActionSubject<Reactor.Action> { return reactor.actionInjectorBeforeTransform }
  public var actionAfterTransform: ActionSubject<Reactor.Action> { return reactor.actionInjectorAfterTransform }
  public var mutationBeforeTransform: ActionSubject<Reactor.Mutation> { return reactor.mutationInjectorBeforeTransform }
  public var mutationAfterTransform: ActionSubject<Reactor.Mutation> { return reactor.mutationInjectorAfterTransform }

  public init(reactor: Reactor) {
    self.reactor = reactor
  }
}

