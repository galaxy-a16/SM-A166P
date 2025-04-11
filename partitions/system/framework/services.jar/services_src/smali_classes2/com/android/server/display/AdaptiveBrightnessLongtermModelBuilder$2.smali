.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)I
    .locals 1

    .line 244
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 241
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    check-cast p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;->compare(Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)I

    move-result p0

    return p0
.end method
