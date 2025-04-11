.class public final Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;
.super Ljava/lang/Object;
.source "BrightnessReason.java"


# instance fields
.field public final adjustedBrightness:I

.field public final modifier:I

.field public final synthetic this$0:Lcom/android/server/display/brightness/BrightnessReason;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->-$$Nest$mmodifierToString(Lcom/android/server/display/brightness/BrightnessReason;I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " -> %s[%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
