.class public Lcom/android/server/display/WifiDisplayController$13;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$config:Landroid/net/wifi/p2p/WifiP2pConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    const-string p1, "WifiDisplayController"

    const-string/jumbo v0, "setPreparedAccountPin onFailure"

    .line 994
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-static {p1, v0, p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mconnectP2p(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "setPreparedAccountPin onSuccess"

    .line 988
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$13;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDesiredDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$13;->val$config:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-static {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mconnectP2p(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method
