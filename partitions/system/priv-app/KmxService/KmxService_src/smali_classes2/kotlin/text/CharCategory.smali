.class public final enum Lkotlin/text/CharCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharCategory;

.field public static final enum COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum CONTROL:Lkotlin/text/CharCategory;

.field public static final enum CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

.field public static final Companion:Lkotlin/text/a;

.field public static final enum DASH_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum ENCLOSING_MARK:Lkotlin/text/CharCategory;

.field public static final enum END_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FORMAT:Lkotlin/text/CharCategory;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum LETTER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum LINE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum LOWERCASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MATH_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum NON_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum OTHER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum OTHER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum PRIVATE_USE:Lkotlin/text/CharCategory;

.field public static final enum SPACE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum START_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum SURROGATE:Lkotlin/text/CharCategory;

.field public static final enum TITLECASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum UNASSIGNED:Lkotlin/text/CharCategory;

.field public static final enum UPPERCASE_LETTER:Lkotlin/text/CharCategory;


# instance fields
.field private final code:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lkotlin/text/CharCategory;
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Lkotlin/text/CharCategory;

    const/4 v1, 0x0

    sget-object v2, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Cn"

    const-string v2, "UNASSIGNED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Lu"

    const-string v2, "UPPERCASE_LETTER"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Ll"

    const-string v2, "LOWERCASE_LETTER"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Lt"

    const-string v2, "TITLECASE_LETTER"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Lm"

    const-string v2, "MODIFIER_LETTER"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Lo"

    const-string v2, "OTHER_LETTER"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Mn"

    const-string v2, "NON_SPACING_MARK"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Me"

    const-string v2, "ENCLOSING_MARK"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Mc"

    const-string v2, "COMBINING_SPACING_MARK"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Nd"

    const-string v2, "DECIMAL_DIGIT_NUMBER"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Nl"

    const-string v2, "LETTER_NUMBER"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "No"

    const-string v2, "OTHER_NUMBER"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Zs"

    const-string v2, "SPACE_SEPARATOR"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Zl"

    const-string v2, "LINE_SEPARATOR"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Zp"

    const-string v2, "PARAGRAPH_SEPARATOR"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Cc"

    const-string v2, "CONTROL"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Cf"

    const-string v2, "FORMAT"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "PRIVATE_USE"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "Co"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "SURROGATE"

    const/16 v2, 0x13

    const-string v4, "Cs"

    invoke-direct {v0, v1, v3, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "DASH_PUNCTUATION"

    const/16 v3, 0x14

    const-string v4, "Pd"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "START_PUNCTUATION"

    const/16 v2, 0x15

    const-string v4, "Ps"

    invoke-direct {v0, v1, v3, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "END_PUNCTUATION"

    const/16 v3, 0x16

    const-string v4, "Pe"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Pc"

    const-string v2, "CONNECTOR_PUNCTUATION"

    const/16 v4, 0x17

    invoke-direct {v0, v2, v3, v4, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Po"

    const-string v2, "OTHER_PUNCTUATION"

    const/16 v3, 0x18

    invoke-direct {v0, v2, v4, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Sm"

    const-string v2, "MATH_SYMBOL"

    const/16 v4, 0x19

    invoke-direct {v0, v2, v3, v4, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Sc"

    const-string v2, "CURRENCY_SYMBOL"

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v4, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Sk"

    const-string v2, "MODIFIER_SYMBOL"

    const/16 v4, 0x1b

    invoke-direct {v0, v2, v3, v4, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "So"

    const-string v2, "OTHER_SYMBOL"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v4, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Pi"

    const-string v2, "INITIAL_QUOTE_PUNCTUATION"

    const/16 v4, 0x1d

    invoke-direct {v0, v2, v3, v4, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "Pf"

    const-string v2, "FINAL_QUOTE_PUNCTUATION"

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v4, v3, v1}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    invoke-static {}, Lkotlin/text/CharCategory;->$values()[Lkotlin/text/CharCategory;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/a;

    invoke-direct {v0}, Lkotlin/text/a;-><init>()V

    sput-object v0, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharCategory;->value:I

    iput-object p4, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharCategory;
    .locals 1

    const-class v0, Lkotlin/text/CharCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharCategory;
    .locals 1

    sget-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharCategory;

    return-object v0
.end method


# virtual methods
.method public final contains(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    iget p0, p0, Lkotlin/text/CharCategory;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lkotlin/text/CharCategory;->value:I

    return p0
.end method
