.class public final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# instance fields
.field public bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final knownAttributionTags:Landroid/util/ArraySet;

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;

.field public final validAttributionTags:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 1

    .line 601
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 593
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    .line 599
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 602
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    return-void
.end method
