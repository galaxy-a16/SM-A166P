.class public Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;
.super Landroid/database/ContentObserver;
.source "QuickTilePackageFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;Landroid/os/Handler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->-$$Nest$mgetActiveQuickTilePackages(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;)V

    return-void
.end method
