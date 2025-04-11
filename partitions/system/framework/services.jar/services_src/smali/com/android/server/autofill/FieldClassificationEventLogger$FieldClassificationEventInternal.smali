.class public final Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;
.super Ljava/lang/Object;
.source "FieldClassificationEventLogger.java"


# instance fields
.field public mLatencyClassificationRequestMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    return-void
.end method
