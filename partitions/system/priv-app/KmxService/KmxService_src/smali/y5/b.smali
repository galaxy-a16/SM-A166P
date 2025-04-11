.class public final Ly5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;

.field public final c:Lob/a;

.field public final d:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lob/a;Lob/a;I)V
    .locals 0

    iput p4, p0, Ly5/b;->a:I

    iput-object p1, p0, Ly5/b;->b:Lob/a;

    iput-object p2, p0, Ly5/b;->c:Lob/a;

    iput-object p3, p0, Ly5/b;->d:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    iget v1, p0, Ly5/b;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Ly5/b;->d:Lob/a;

    iget-object v5, p0, Ly5/b;->c:Lob/a;

    iget-object p0, p0, Ly5/b;->b:Lob/a;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo6/e;

    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/f;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm6/a;

    new-instance v2, Lh6/g;

    invoke-direct {v2, p0, v0, v1}, Lh6/g;-><init>(Lo6/e;Ll6/f;Lm6/a;)V

    return-object v2

    :pswitch_1
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz5/d;

    invoke-interface {v5}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw5/h;

    invoke-interface {v4}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx6/a;

    new-instance v2, Lz5/a;

    invoke-direct {v2, p0, v0, v1}, Lz5/a;-><init>(Lz5/d;Lw5/h;Lx6/a;)V

    return-object v2

    :pswitch_2
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-static {v5}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v1

    invoke-static {v4}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v4

    sget-object v5, Ly5/a;->a:[I

    iget-object p0, p0, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_0

    invoke-interface {v4}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {v1}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lc6/c;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    invoke-static {v5}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v1

    invoke-static {v4}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v4

    sget-object v5, Ly5/a;->a:[I

    iget-object p0, p0, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    if-eq p0, v3, :cond_4

    if-ne p0, v2, :cond_3

    invoke-interface {v4}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    invoke-interface {v1}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lz5/d;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx6/a;

    invoke-static {v5}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    invoke-static {v4}, Ldagger/internal/a;->a(Lob/a;)Lcb/a;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
