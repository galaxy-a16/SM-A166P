.class public final synthetic Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iput p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iget p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->$r8$lambda$V7I051F2i9ASH1LlxdjS02b9l-k(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V

    return-void
.end method
