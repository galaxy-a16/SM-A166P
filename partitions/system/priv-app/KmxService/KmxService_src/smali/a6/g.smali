.class public final La6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILio/netty/buffer/ByteBuf;Lz5/b;)Lu6/c;
    .locals 1

    const/4 p0, 0x2

    invoke-static {p0, p1}, Lv9/a;->g(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-static {p0, p1}, Lv9/a;->h(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    new-instance p1, Lk7/a;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

    sget-object p3, Lf6/h;->c:Lf6/h;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, p3}, Lk7/a;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;Lf6/j;Lf6/h;)V

    return-object p1
.end method
