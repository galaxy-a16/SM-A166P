.class public Lcom/android/server/display/WifiDisplayController$16;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v0, 0x0

    const/16 v1, 0x2710

    invoke-static {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mtryDiscoverPeers(Lcom/android/server/display/WifiDisplayController;II)V

    return-void
.end method
