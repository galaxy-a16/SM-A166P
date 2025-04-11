.class Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->initData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "KMX|SamsungAccountManager"

    const-string v0, "samsung account service connected -> require access token"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    sget v0, Lcom/msc/sa/aidl/e;->c:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.msc.sa.aidl.ISAService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/msc/sa/aidl/f;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/msc/sa/aidl/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/msc/sa/aidl/d;

    invoke-direct {v0, p2}, Lcom/msc/sa/aidl/d;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->e(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/msc/sa/aidl/f;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->h(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    new-instance p2, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-direct {p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>()V

    invoke-static {p1, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->f(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->g(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "KMX|SamsungAccountManager"

    const-string v0, "samsung account service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->g(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;)V

    return-void
.end method
