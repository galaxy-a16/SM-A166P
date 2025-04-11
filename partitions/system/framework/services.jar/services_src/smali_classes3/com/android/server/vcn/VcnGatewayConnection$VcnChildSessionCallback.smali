.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# instance fields
.field public mIsChildOpened:Z

.field public final mIsOpportunistic:Z

.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2388
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;IZ)V
    .locals 0

    .line 2405
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2385
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    .line 2406
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 2407
    iput-boolean p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 2431
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2433
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    if-nez v0, :cond_0

    .line 2434
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v0, "ChildClosed for unopened opportunistic child; ignoring"

    invoke-static {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3

    .line 2443
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosedExceptionally for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2445
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    if-nez v0, :cond_0

    .line 2446
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string p1, "ChildClosedExceptionally for unopened opportunistic child; ignoring"

    invoke-static {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    return-void
.end method

.method public onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 3

    .line 2455
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mchildTransformCreated(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method public onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 2

    .line 2471
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildTransformDeleted; Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; for token "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    return-void
.end method

.method public onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 3

    .line 2463
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformsMigrated; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mmigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 1

    .line 2426
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;-><init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method public onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 3

    .line 2413
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2415
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    if-eqz v0, :cond_0

    .line 2416
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v0, "ChildOpened for opportunistic child; suppressing event message"

    invoke-static {p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2417
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    return-void

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mchildOpened(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method
