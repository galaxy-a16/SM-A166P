.class public Lcom/android/server/am/mars/filter/filter/SystemFilter;
.super Ljava/lang/Object;
.source "SystemFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/SystemFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/SystemFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/SystemFilter;
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/SystemFilter;

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

    if-nez p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    :goto_0
    const/16 p0, 0x3e8

    const/16 p1, 0xe

    if-ne p3, p0, :cond_1

    return p1

    :cond_1
    const/16 p0, 0x11

    if-ne p4, p0, :cond_2

    if-ltz p3, :cond_2

    const/16 p0, 0x2710

    if-ge p3, p0, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method
