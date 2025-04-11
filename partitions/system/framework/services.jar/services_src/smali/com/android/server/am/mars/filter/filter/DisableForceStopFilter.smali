.class public Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
.super Ljava/lang/Object;
.source "DisableForceStopFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 0
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method
