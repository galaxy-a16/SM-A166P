.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->getDeviceImageFromSCPM(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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

    const-string v1, "KMX|VerifyPppActivity"

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->h(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->handleResult([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;->f(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppActivity;)Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->setDevicePkiInfo(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p0, "Error pki handle result!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string p0, "unregistered"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregistered Model : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
