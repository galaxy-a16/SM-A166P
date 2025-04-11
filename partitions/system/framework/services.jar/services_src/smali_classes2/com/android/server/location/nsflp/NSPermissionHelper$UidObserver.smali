.class public Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "NSPermissionHelper.java"


# instance fields
.field public mUidState:Ljava/util/HashMap;


# direct methods
.method public static bridge synthetic -$$Nest$mgetUidState(Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->getUidState(I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUidState(I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    return-object p0
.end method

.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p5, p4}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;-><init>(IILcom/android/server/location/nsflp/NSPermissionHelper$UidState-IA;)V

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p3, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->-$$Nest$fputstate(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V

    invoke-static {p3, p5}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->-$$Nest$fputcapability(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V

    :goto_0
    return-void
.end method
