.class public Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;
.super Lcom/android/server/ExtconStateObserver;
.source "WiredAccessoryManager.java"


# instance fields
.field public final mExtconInfos:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 3

    .line 549
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/ExtconStateObserver;-><init>()V

    const-string p1, "HDMI"

    const-string v0, "LINE-OUT"

    const-string v1, "HEADPHONE"

    const-string v2, "MICROPHONE"

    .line 550
    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const/4 p0, 0x0

    .line 585
    filled-new-array {p0, p0}, [I

    move-result-object v0

    const-string v1, "HEADPHONE"

    .line 588
    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 589
    invoke-static {v0, v2, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "MICROPHONE"

    .line 591
    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 592
    invoke-static {v0, v3, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "HDMI"

    .line 594
    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    .line 595
    invoke-static {v0, v2, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "LINE-OUT"

    .line 597
    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x20

    .line 598
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_3
    aget p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aget p1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 3

    .line 607
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 608
    :try_start_0
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 609
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 610
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    not-int v2, p3

    and-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    and-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p2, p3}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    .line 611
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 612
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 546
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method
