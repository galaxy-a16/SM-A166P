.class public final synthetic Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    check-cast p1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    return-void
.end method
