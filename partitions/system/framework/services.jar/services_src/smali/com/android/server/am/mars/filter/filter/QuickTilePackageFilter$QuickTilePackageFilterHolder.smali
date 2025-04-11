.class public abstract Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;
.super Ljava/lang/Object;
.source "QuickTilePackageFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;-><init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    return-void
.end method
