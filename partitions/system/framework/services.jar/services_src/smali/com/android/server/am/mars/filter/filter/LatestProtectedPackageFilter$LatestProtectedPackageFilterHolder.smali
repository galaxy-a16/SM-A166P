.class public abstract Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;
.super Ljava/lang/Object;
.source "LatestProtectedPackageFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    return-void
.end method
