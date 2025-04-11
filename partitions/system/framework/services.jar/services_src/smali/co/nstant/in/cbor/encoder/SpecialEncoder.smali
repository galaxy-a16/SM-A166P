.class public Lco/nstant/in/cbor/encoder/SpecialEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "SpecialEncoder.java"


# instance fields
.field public final doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

.field public final halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

.field public final singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    new-instance v0, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    invoke-direct {v0, p1, p2}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/Special;)V
    .locals 2

    sget-object v0, Lco/nstant/in/cbor/encoder/SpecialEncoder$1;->$SwitchMap$co$nstant$in$cbor$model$SpecialType:[I

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Special;->getSpecialType()Lco/nstant/in/cbor/model/SpecialType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Wrong data item type"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    if-eqz v0, :cond_0

    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    const/16 v0, 0xf8

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValue;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/DoublePrecisionFloat;)V

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    instance-of v0, p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/SinglePrecisionFloat;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    instance-of v0, p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;->encode(Lco/nstant/in/cbor/model/HalfPrecisionFloat;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Unallocated special type"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v0, Lco/nstant/in/cbor/encoder/SpecialEncoder$1;->$SwitchMap$co$nstant$in$cbor$model$SimpleValueType:[I

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValue;->getValue()I

    move-result p1

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValue;->getSimpleValueType()Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object p1

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    move-result p1

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
