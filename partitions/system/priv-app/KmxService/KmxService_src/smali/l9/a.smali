.class public final Ll9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La9/b;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/d;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Ll9/a;->a:I

    iput-object p1, p0, Ll9/a;->b:La9/b;

    iput-object p2, p0, Ll9/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ll9/a;->a:I

    const-string v1, "b"

    iget-object v2, p0, Ll9/a;->c:Landroid/content/Context;

    iget-object p0, p0, Ll9/a;->b:La9/b;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p0, :cond_0

    invoke-static {v2}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-virtual {v0}, Lf9/c;->I()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get token : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ll9/b;->C0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;

    iget v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;->b:Landroid/content/Context;

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_1

    invoke-static {v2}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    invoke-virtual {v0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get push type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;

    iget v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/d;->b:Landroid/content/Context;

    packed-switch v1, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
