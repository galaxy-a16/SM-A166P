.class public final Lcom/android/server/autofill/FieldClassificationEventLogger;
.super Ljava/lang/Object;
.source "FieldClassificationEventLogger.java"


# instance fields
.field public mEventInternal:Ljava/util/Optional;


# direct methods
.method public static synthetic $r8$lambda$Gbxo9WgdzMUKK_1lUgG7kXa371c(JLcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/FieldClassificationEventLogger;->lambda$maybeSetLatencyMillis$0(JLcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public static createLogger()Lcom/android/server/autofill/FieldClassificationEventLogger;
    .locals 1

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$maybeSetLatencyMillis$0(JLcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;)V
    .locals 0

    iput-wide p0, p2, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "FieldClassificationEventLogger"

    if-nez v0, :cond_0

    const-string p0, "Shouldn\'t be logging AutofillFieldClassificationEventInternal again for same event"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillFieldClassificationEventReported: mLatencyClassificationRequestMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0x293

    iget-wide v2, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public maybeSetLatencyMillis(J)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startNewLogForRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FieldClassificationEventLogger"

    const-string v1, "FieldClassificationEventLogger is not empty before starting for a new request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    invoke-direct {v0}, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
