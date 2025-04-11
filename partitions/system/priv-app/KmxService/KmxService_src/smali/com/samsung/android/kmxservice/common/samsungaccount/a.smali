.class public final synthetic Lcom/samsung/android/kmxservice/common/samsungaccount/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->b:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/a;->b:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->b(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V

    return-void

    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
