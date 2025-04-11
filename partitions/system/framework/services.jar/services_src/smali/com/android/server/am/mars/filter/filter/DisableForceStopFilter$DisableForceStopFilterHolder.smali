.class public abstract Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;
.super Ljava/lang/Object;
.source "DisableForceStopFilter.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;-><init>(Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter-IA;)V

    sput-object v0, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    return-void
.end method
