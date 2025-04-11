.class public final enum Lcom/google/crypto/tink/subtle/PemKeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/subtle/PemKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/subtle/PemKeyType;

.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN "

.field public static final enum ECDSA_P256_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum ECDSA_P384_SHA384:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum ECDSA_P521_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;

.field private static final END:Ljava/lang/String; = "-----END "

.field private static final MARKER:Ljava/lang/String; = "-----"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "PRIVATE KEY"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "PUBLIC KEY"

.field public static final enum RSA_PSS_2048_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_PSS_3072_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_PSS_4096_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_PSS_4096_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_2048_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_3072_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_4096_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_4096_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field public final keySizeInBits:I

.field public final keyType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v7, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v1, "RSA_PSS_2048_SHA256"

    const/4 v2, 0x0

    const-string v3, "RSA"

    const-string v4, "RSASSA-PSS"

    const/16 v5, 0x800

    sget-object v15, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-object v0, v7

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v7, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_PSS_2048_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v0, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_PSS_3072_SHA256"

    const/4 v10, 0x1

    const-string v11, "RSA"

    const-string v12, "RSASSA-PSS"

    const/16 v13, 0xc00

    move-object v8, v0

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v0, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_PSS_3072_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v1, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_PSS_4096_SHA256"

    const/4 v10, 0x2

    const-string v11, "RSA"

    const-string v12, "RSASSA-PSS"

    const/16 v13, 0x1000

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v1, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_PSS_4096_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v2, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v17, "RSA_PSS_4096_SHA512"

    const/16 v18, 0x3

    const-string v19, "RSA"

    const-string v20, "RSASSA-PSS"

    const/16 v21, 0x1000

    sget-object v3, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-object/from16 v16, v2

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v2, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_PSS_4096_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v4, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_SIGN_PKCS1_2048_SHA256"

    const/4 v10, 0x4

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    const/16 v13, 0x800

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v4, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_SIGN_PKCS1_2048_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v5, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_SIGN_PKCS1_3072_SHA256"

    const/4 v10, 0x5

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    const/16 v13, 0xc00

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v5, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_SIGN_PKCS1_3072_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v6, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_SIGN_PKCS1_4096_SHA256"

    const/4 v10, 0x6

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    const/16 v13, 0x1000

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v6, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_SIGN_PKCS1_4096_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v16, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "RSA_SIGN_PKCS1_4096_SHA512"

    const/4 v10, 0x7

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    move-object/from16 v8, v16

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v16, Lcom/google/crypto/tink/subtle/PemKeyType;->RSA_SIGN_PKCS1_4096_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v17, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "ECDSA_P256_SHA256"

    const/16 v10, 0x8

    const-string v11, "EC"

    const-string v12, "ECDSA"

    const/16 v13, 0x100

    move-object/from16 v8, v17

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v17, Lcom/google/crypto/tink/subtle/PemKeyType;->ECDSA_P256_SHA256:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v15, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v19, "ECDSA_P384_SHA384"

    const/16 v20, 0x9

    const-string v21, "EC"

    const-string v22, "ECDSA"

    const/16 v23, 0x180

    sget-object v24, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA384:Lcom/google/crypto/tink/subtle/Enums$HashType;

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v24}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v15, Lcom/google/crypto/tink/subtle/PemKeyType;->ECDSA_P384_SHA384:Lcom/google/crypto/tink/subtle/PemKeyType;

    new-instance v18, Lcom/google/crypto/tink/subtle/PemKeyType;

    const-string v9, "ECDSA_P521_SHA512"

    const/16 v10, 0xa

    const-string v11, "EC"

    const-string v12, "ECDSA"

    const/16 v13, 0x209

    move-object/from16 v8, v18

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/subtle/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v18, Lcom/google/crypto/tink/subtle/PemKeyType;->ECDSA_P521_SHA512:Lcom/google/crypto/tink/subtle/PemKeyType;

    const/16 v3, 0xb

    new-array v3, v3, [Lcom/google/crypto/tink/subtle/PemKeyType;

    const/4 v8, 0x0

    aput-object v7, v3, v8

    const/4 v7, 0x1

    aput-object v0, v3, v7

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v0, 0x4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object v5, v3, v0

    const/4 v0, 0x6

    aput-object v6, v3, v0

    const/4 v0, 0x7

    aput-object v16, v3, v0

    const/16 v0, 0x8

    aput-object v17, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v18, v3, v0

    sput-object v3, Lcom/google/crypto/tink/subtle/PemKeyType;->$VALUES:[Lcom/google/crypto/tink/subtle/PemKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/crypto/tink/subtle/Enums$HashType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keyType:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->algorithm:Ljava/lang/String;

    iput p5, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keySizeInBits:I

    iput-object p6, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    return-void
.end method

.method private getPrivateKey([B)Ljava/security/Key;
    .locals 2

    sget-object v0, Lu4/d;->e:Lu4/d;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu4/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/PemKeyType;->validate(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKey([B)Ljava/security/Key;
    .locals 2

    sget-object v0, Lu4/d;->e:Lu4/d;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu4/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/PemKeyType;->validate(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method private validate(Ljava/security/Key;)Ljava/security/Key;
    .locals 9

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keyType:Ljava/lang/String;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v4, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keySizeInBits:I

    if-ne v0, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keySizeInBits:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "invalid RSA key size, want %d got %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const-string v4, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    const-string v5, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    const-string v6, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    const-string v7, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    const-string v8, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-static {v6, v7, v8, v4, v5}, Lp9/d;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v0, v4}, Lp9/d;->U(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    const-string v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    const-string v6, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    const-string v7, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    const-string v8, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    invoke-static {v6, v7, v8, v4, v5}, Lp9/d;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v0, v4}, Lp9/d;->U(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    const-string v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    const-string v6, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    const-string v7, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    const-string v8, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    invoke-static {v6, v7, v8, v4, v5}, Lp9/d;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v0, v4}, Lp9/d;->U(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    instance-of v4, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v4, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keySizeInBits:I

    if-ne v0, v4, :cond_4

    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/google/crypto/tink/subtle/PemKeyType;->keySizeInBits:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "invalid EC key size, want %d got %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only curves over prime order fields are supported"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "unsupport EC spec: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/subtle/PemKeyType;
    .locals 1

    const-class v0, Lcom/google/crypto/tink/subtle/PemKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/subtle/PemKeyType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/subtle/PemKeyType;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/subtle/PemKeyType;->$VALUES:[Lcom/google/crypto/tink/subtle/PemKeyType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/subtle/PemKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/subtle/PemKeyType;

    return-object v0
.end method


# virtual methods
.method public readKey(Ljava/io/BufferedReader;)Ljava/security/Key;
    .locals 6

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    return-object v1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-----END "

    invoke-static {v3, v0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu4/c;->a(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "PUBLIC KEY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/PemKeyType;->getPublicKey([B)Ljava/security/Key;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v2, "PRIVATE KEY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/PemKeyType;->getPrivateKey([B)Ljava/security/Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_7
    return-object v1
.end method
