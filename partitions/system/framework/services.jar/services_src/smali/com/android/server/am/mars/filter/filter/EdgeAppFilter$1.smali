.class public Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;
.super Landroid/database/ContentObserver;
.source "EdgeAppFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->-$$Nest$mgetCocktailBarPackage(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;)V

    return-void
.end method
