.class public final synthetic Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

.field public final synthetic f$1:Lcom/android/server/timedetector/GnssTimeSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timedetector/GnssTimeSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-static {v0, p0}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->$r8$lambda$cJ1obtnNJ-X3de_lSMy_Biap34k(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method
