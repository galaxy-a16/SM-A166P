.class public Lio/netty/handler/codec/marshalling/DefaultMarshallerProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/marshalling/MarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/marshalling/DefaultMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iput-object p2, p0, Lio/netty/handler/codec/marshalling/DefaultMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    return-void
.end method


# virtual methods
.method public getMarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Marshaller;
    .locals 0

    iget-object p1, p0, Lio/netty/handler/codec/marshalling/DefaultMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object p0, p0, Lio/netty/handler/codec/marshalling/DefaultMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {p1, p0}, Lorg/jboss/marshalling/MarshallerFactory;->createMarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Marshaller;

    move-result-object p0

    return-object p0
.end method
