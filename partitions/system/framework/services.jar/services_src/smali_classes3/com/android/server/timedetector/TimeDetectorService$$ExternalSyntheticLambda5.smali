.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Lcom/android/server/timedetector/NetworkTimeSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/timedetector/NetworkTimeSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/timedetector/NetworkTimeSuggestion;

    invoke-static {v0, p0}, Lcom/android/server/timedetector/TimeDetectorService;->$r8$lambda$lwVkgO4jgXpkQlcZUh_XNPkMybs(Lcom/android/server/timedetector/TimeDetectorService;Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method
