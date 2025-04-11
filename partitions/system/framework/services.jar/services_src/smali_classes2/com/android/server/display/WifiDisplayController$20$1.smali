.class public Lcom/android/server/display/WifiDisplayController$20$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/WifiDisplayController$20;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController$20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20$1;->this$1:Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "onDeviceInfoAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20$1;->this$1:Lcom/android/server/display/WifiDisplayController$20;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmLocalDeviceP2pMacAddress(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
