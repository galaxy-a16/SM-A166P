.class public Lcom/android/server/display/WifiDisplayController$19;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$flags:I

.field public final synthetic val$height:I

.field public final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field public final synthetic val$oldSurface:Landroid/view/Surface;

.field public final synthetic val$surface:Landroid/view/Surface;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1274
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    .line 1275
    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 1277
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mfinish(Lcom/android/server/display/WifiDisplayController;)V

    .line 1283
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_7

    .line 1284
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_1

    .line 1286
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eq v0, v1, :cond_6

    .line 1292
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1295
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$oldSurface:Landroid/view/Surface;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19;->val$surface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$19;->val$width:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$19;->val$height:I

    iget v6, p0, Lcom/android/server/display/WifiDisplayController$19;->val$flags:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIILjava/lang/String;)V

    :cond_7
    return-void
.end method
