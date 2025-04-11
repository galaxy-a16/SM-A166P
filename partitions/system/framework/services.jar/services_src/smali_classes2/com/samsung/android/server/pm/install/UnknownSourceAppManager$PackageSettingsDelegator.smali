.class public Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;
.super Ljava/lang/Object;
.source "UnknownSourceAppManager.java"


# instance fields
.field public final mGetPackagesLocked:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method
