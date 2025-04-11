.class public final Lrc/a;
.super Ltc/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltc/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
