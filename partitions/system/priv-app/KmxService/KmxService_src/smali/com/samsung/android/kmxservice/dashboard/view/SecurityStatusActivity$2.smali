.class Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->getDeviceImageFromSCPM(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->lambda$onReceive$0(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/util/Map;)V
    .locals 2

    const-string v0, "KMX|SecurityStatusActivity"

    const-string v1, "get pki info completed!! notifyDatasetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->l(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->setDevicePkiInfo(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.scpm.product.UPDATE.f1gxtygekn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "modelCodes"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KMX|SecurityStatusActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->k(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->handleResult([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$2;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    new-instance v3, Lcom/samsung/android/kmxservice/dashboard/view/f;

    invoke-direct {v3, v2, p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Error pki handle result!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p0, "unregistered"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object p2, p0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unregistered Model : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
