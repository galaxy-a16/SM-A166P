.class public final synthetic Lh6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh6/g;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lh6/g;Ljava/lang/Throwable;I)V
    .locals 0

    iput p3, p0, Lh6/f;->a:I

    iput-object p1, p0, Lh6/f;->b:Lh6/g;

    iput-object p2, p0, Lh6/f;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lh6/f;->a:I

    iget-object v1, p0, Lh6/f;->c:Ljava/lang/Throwable;

    iget-object p0, p0, Lh6/f;->b:Lh6/g;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v2, "Session expired as connection was closed."

    invoke-direct {v0, v2, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lh6/g;->a(Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;)V

    return-void

    :goto_0
    iget-object v0, p0, Lh6/g;->e:Lio/netty/util/concurrent/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh6/g;->e:Lio/netty/util/concurrent/c;

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v2, "Session expired after expiry interval"

    invoke-direct {v0, v2, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lh6/g;->a(Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
