.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/SoundDoseHelper;->$r8$lambda$g8pr3Q-o5gnF9fWmLQCxRdH9oOU(JLjava/lang/String;)Landroid/media/SoundDoseRecord;

    move-result-object p0

    return-object p0
.end method
