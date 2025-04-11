.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UnderlyingNetworkController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method
