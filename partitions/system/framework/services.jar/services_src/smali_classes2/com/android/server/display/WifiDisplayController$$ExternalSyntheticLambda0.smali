.class public final synthetic Lcom/android/server/display/WifiDisplayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic f$1:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    check-cast p1, [B

    invoke-static {v0, p0, p1}, Lcom/android/server/display/WifiDisplayController;->$r8$lambda$tkNlwDBT7x6Ibh05M7yGZZ7M8h8(Lcom/android/server/display/WifiDisplayController;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;[B)V

    return-void
.end method
