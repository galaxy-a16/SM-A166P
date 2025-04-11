.class public final Lcom/android/server/display/brightness/BrightnessReason;
.super Ljava/lang/Object;
.source "BrightnessReason.java"


# instance fields
.field public changes:Ljava/util/List;

.field public mModifier:I

.field public mReason:I

.field public startBrightness:I


# direct methods
.method public static bridge synthetic -$$Nest$mmodifierToString(Lcom/android/server/display/brightness/BrightnessReason;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessReason;->modifierToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addModifier(IF)V
    .locals 2

    .line 142
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;-><init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changesToString()Ljava/lang/String;
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/BrightnessReason$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 198
    instance-of v0, p1, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/BrightnessReason;

    .line 202
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getModifier()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    return p0
.end method

.method public getReason()I
    .locals 0

    .line 269
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    return p0
.end method

.method public hasLoggableChanges(Lcom/android/server/display/brightness/BrightnessReason;)Z
    .locals 2

    const/4 v0, 0x6

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->isReasonChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x70

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->isModifierChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasModifier(I)Z
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isModifierChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-eq v0, v1, :cond_0

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result p0

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReasonChanged(Lcom/android/server/display/brightness/BrightnessReason;I)Z
    .locals 1

    .line 157
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    if-eq p0, p2, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z
    .locals 0

    .line 173
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final modifierToString(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sparse-switch p1, :sswitch_data_0

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string/jumbo p0, "screen_curtain"

    return-object p0

    :sswitch_1
    const-string p0, "cover_display_demo"

    return-object p0

    :sswitch_2
    const-string/jumbo p0, "restore_manual"

    return-object p0

    :sswitch_3
    const-string p0, "force_dim"

    return-object p0

    :sswitch_4
    const-string p0, "doze_maximum"

    return-object p0

    :sswitch_5
    const-string p0, "curtain"

    return-object p0

    :sswitch_6
    const-string/jumbo p0, "outdoor"

    return-object p0

    :sswitch_7
    const-string p0, "hbm_block"

    return-object p0

    :sswitch_8
    const-string p0, "cover_limit"

    return-object p0

    :sswitch_9
    const-string p0, "ab_limit"

    return-object p0

    :sswitch_a
    const-string/jumbo p0, "mb_limit"

    return-object p0

    :sswitch_b
    const-string/jumbo p0, "scale_factor"

    return-object p0

    :sswitch_c
    const-string/jumbo p0, "throttled"

    return-object p0

    :sswitch_d
    const-string p0, "hdr"

    return-object p0

    :cond_0
    const-string p0, "low_pwr"

    return-object p0

    :cond_1
    const-string p0, "dim"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x40 -> :sswitch_9
        0x80 -> :sswitch_8
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "last_target"

    return-object p0

    :pswitch_1
    const-string p0, "follower"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "screen_off_brightness_sensor"

    return-object p0

    :pswitch_3
    const-string p0, "boost"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "temporary"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "override"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "screen_off"

    return-object p0

    :pswitch_7
    const-string p0, "automatic"

    return-object p0

    :pswitch_8
    const-string p0, "doze_default"

    return-object p0

    :pswitch_9
    const-string p0, "doze"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "manual"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public set(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    .line 109
    :cond_1
    iget v2, p1, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 107
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    if-nez p1, :cond_2

    goto :goto_2

    .line 111
    :cond_2
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    return-void
.end method

.method public setModifier(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "brightness modifier out of bounds: 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessReason"

    .line 283
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    :goto_0
    return-void
.end method

.method public setReason(IF)V
    .locals 0

    .line 127
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(II)V

    return-void
.end method

.method public setReason(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 136
    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    .line 138
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 132
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "brightness reason out of bounds: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessReason"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const-string v1, " temp_adj"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const-string p1, " auto_adj"

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const-string p1, " low_pwr"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-string p1, " dim"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_3
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    const-string p1, " hdr"

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_4
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_5

    const-string p0, " throttled"

    .line 242
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_6

    add-int/lit8 p0, p0, -0x2

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_6
    const-string p0, " ]"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
