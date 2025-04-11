.class public Lcom/android/server/display/WifiDisplayAdapter$8;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$interval:I

.field public final synthetic val$scanChannel:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;II)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$scanChannel:I

    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->val$interval:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan(II)V

    :cond_0
    return-void
.end method
