.class public final enum Lco/nstant/in/cbor/model/SimpleValueType;
.super Ljava/lang/Enum;
.source "SimpleValueType.java"


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum NULL:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;


# instance fields
.field private final value:I


# direct methods
.method public static synthetic $values()[Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 6

    .line 3
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    sget-object v2, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    sget-object v3, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    sget-object v4, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    sget-object v5, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    filled-new-array/range {v0 .. v5}, [Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const/16 v1, 0x14

    const-string v2, "FALSE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 6
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const-string v4, "TRUE"

    invoke-direct {v0, v4, v1, v2}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 7
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const/4 v1, 0x2

    const/16 v2, 0x16

    const-string v4, "NULL"

    invoke-direct {v0, v4, v1, v2}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 8
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const-string v4, "UNDEFINED"

    invoke-direct {v0, v4, v1, v2}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 9
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const-string v1, "RESERVED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 10
    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const-string v1, "UNALLOCATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    .line 3
    invoke-static {}, Lco/nstant/in/cbor/model/SimpleValueType;->$values()[Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    return-void
.end method

.method public static ofByte(I)Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    packed-switch p0, :pswitch_data_0

    .line 42
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    .line 40
    :pswitch_0
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    .line 31
    :pswitch_1
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    .line 29
    :pswitch_2
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    .line 27
    :pswitch_3
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    .line 25
    :pswitch_4
    sget-object p0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    .line 3
    const-class v0, Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    .line 3
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/SimpleValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/SimpleValueType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 19
    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    return p0
.end method
