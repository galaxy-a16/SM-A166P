.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Boundaries"
.end annotation


# instance fields
.field private final _footer:Ljava/lang/String;

.field private final _header:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "-----BEGIN "

    const-string v0, "-----"

    .line 1
    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_header:Ljava/lang/String;

    const-string p1, "-----END "

    .line 3
    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_footer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isTheExpectedFooter(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_footer:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isTheExpectedHeader(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_header:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
