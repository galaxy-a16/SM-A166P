.class public Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;
.super Ljava/lang/Object;
.source "NSPermissionHelper.java"


# instance fields
.field public capability:I

.field public state:I


# direct methods
.method public static bridge synthetic -$$Nest$fputcapability(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstate(Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    iput p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/location/nsflp/NSPermissionHelper$UidState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getProcState()I
    .locals 0

    iget p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    return p0
.end method

.method public hasLocationCapability()Z
    .locals 1

    iget p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
