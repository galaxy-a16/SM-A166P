.class public Lcom/android/server/tare/EconomicPolicy$Cost;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# instance fields
.field public final costToProduce:J

.field public final price:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    iput-wide p3, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    return-void
.end method
