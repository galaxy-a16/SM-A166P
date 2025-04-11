.class public final Lcom/android/server/devicestate/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# instance fields
.field public final mFlags:I

.field public final mIdentifier:I

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    const-string v1, "identifier"

    const/4 v2, 0x0

    .line 114
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 117
    iput p1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    .line 118
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 119
    iput p3, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 151
    const-class v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    check-cast p1, Lcom/android/server/devicestate/DeviceState;

    .line 153
    iget v2, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    iget v3, p1, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    iget p1, p1, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIdentifier()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hasFlag(I)Z
    .locals 0

    .line 166
    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/devicestate/DeviceState;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicestate/DeviceState;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancel_when_requester_not_on_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
