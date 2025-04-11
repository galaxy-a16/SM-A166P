.class public abstract Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;
.super Ljava/lang/Object;
.source "WidgetPkgFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;-><init>(Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    return-void
.end method
