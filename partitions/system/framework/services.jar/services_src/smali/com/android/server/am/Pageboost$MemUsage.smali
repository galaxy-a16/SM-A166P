.class public final Lcom/android/server/am/Pageboost$MemUsage;
.super Ljava/lang/Object;
.source "Pageboost.java"


# instance fields
.field public anon:I

.field public gpu:I

.field public ion:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2235
    iput p1, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    .line 2236
    iput p2, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    .line 2237
    iput p3, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    return-void
.end method


# virtual methods
.method public getAnon()I
    .locals 0

    .line 2241
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    return p0
.end method

.method public getGPUMem()I
    .locals 0

    .line 2249
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    return p0
.end method

.method public getIONMem()I
    .locals 0

    .line 2245
    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    return p0
.end method

.method public getTotal()I
    .locals 2

    .line 2253
    iget v0, p0, Lcom/android/server/am/Pageboost$MemUsage;->anon:I

    iget v1, p0, Lcom/android/server/am/Pageboost$MemUsage;->ion:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/server/am/Pageboost$MemUsage;->gpu:I

    add-int/2addr v0, p0

    return v0
.end method
