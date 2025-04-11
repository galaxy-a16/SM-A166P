.class public final Lcom/hivemq/client/internal/mqtt/handler/auth/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;

.field public final c:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lob/a;I)V
    .locals 0

    iput p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->a:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->b:Lob/a;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->c:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->a:I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->c:Lob/a;

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;->b:Lob/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/b;

    new-instance v1, Ll6/f;

    invoke-direct {v1, p0, v0}, Ll6/f;-><init>(Lw5/h;Ll6/b;)V

    return-object v1

    :pswitch_1
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh6/g;

    new-instance v1, Lj6/g;

    invoke-direct {v1, p0, v0}, Lj6/g;-><init>(Lw5/h;Lh6/g;)V

    return-object v1

    :pswitch_2
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx6/a;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Auth mechanism must not be null. This must not happen and is a bug."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/b;

    new-instance v1, Lo6/e;

    invoke-direct {v1, p0, v0}, Lo6/e;-><init>(Lw5/h;Ll6/b;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
