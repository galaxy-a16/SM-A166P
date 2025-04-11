.class public abstract Lcom/samsung/android/authnrservice/service/Encoding$Base64;
.super Ljava/lang/Object;
.source "Encoding.java"


# direct methods
.method public static encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
