.class public Lorg/spongycastle/asn1/x500/style/RFC4519Style;
.super Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;
.source "SourceFile"


# static fields
.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

.field public static final businessCategory:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final cn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final description:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final destinationIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final distinguishedName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dnQualifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final enhancedSearchGuide:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final facsimileTelephoneNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final generationQualifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final givenName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final houseIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final initials:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final internationalISDNNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final member:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final name:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final o:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final ou:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final owner:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final physicalDeliveryOfficeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final postOfficeBox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferredDeliveryMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final registeredAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final roleOccupant:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final searchGuide:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final seeAlso:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final serialNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final sn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final st:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final street:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final telephoneNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final teletexTerminalIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final telexNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final title:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final uid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final uniqueMember:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final userPassword:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final x121Address:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final x500UniqueIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 63

    const-string v0, "2.5.4.15"

    invoke-static {v0}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-static {v1}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.3"

    invoke-static {v2}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "0.9.2342.19200300.100.1.25"

    invoke-static {v3}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.4.13"

    invoke-static {v4}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->description:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.27"

    invoke-static {v5}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.49"

    invoke-static {v6}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.46"

    invoke-static {v7}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.47"

    invoke-static {v8}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.23"

    invoke-static {v9}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.44"

    invoke-static {v10}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.42"

    invoke-static {v11}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    sput-object v11, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->givenName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.51"

    invoke-static {v12}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    sput-object v12, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.43"

    invoke-static {v13}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->initials:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.25"

    invoke-static {v14}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.4.7"

    invoke-static {v15}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.31"

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->member:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.41"

    move-object/from16 v18, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->name:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.10"

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->o:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.11"

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->ou:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.32"

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->owner:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.19"

    move-object/from16 v22, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.16"

    move-object/from16 v23, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.17"

    move-object/from16 v24, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->postalCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.18"

    move-object/from16 v25, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.28"

    move-object/from16 v26, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.26"

    move-object/from16 v27, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.33"

    move-object/from16 v28, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.14"

    move-object/from16 v29, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.34"

    move-object/from16 v30, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.5"

    move-object/from16 v31, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.4"

    move-object/from16 v32, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->sn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.8"

    move-object/from16 v33, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->st:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.9"

    move-object/from16 v34, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->street:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.20"

    move-object/from16 v35, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.22"

    move-object/from16 v36, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.21"

    move-object/from16 v37, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.12"

    move-object/from16 v38, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->title:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "0.9.2342.19200300.100.1.1"

    move-object/from16 v39, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->uid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.50"

    move-object/from16 v40, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.35"

    move-object/from16 v41, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->userPassword:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.24"

    move-object/from16 v42, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->x121Address:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v16, "2.5.4.45"

    move-object/from16 v43, v15

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/cert/a;->w(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v15

    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    sput-object v15, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    move-object/from16 v44, v14

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    move-object/from16 v45, v14

    const-string v14, "businessCategory"

    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "c"

    invoke-virtual {v15, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v1

    const-string v1, "cn"

    invoke-virtual {v15, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v47, v1

    const-string v1, "dc"

    invoke-virtual {v15, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v48, v1

    const-string v1, "description"

    invoke-virtual {v15, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v49, v1

    const-string v1, "destinationIndicator"

    invoke-virtual {v15, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "distinguishedName"

    invoke-virtual {v15, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dnQualifier"

    invoke-virtual {v15, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enhancedSearchGuide"

    invoke-virtual {v15, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facsimileTelephoneNumber"

    invoke-virtual {v15, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "generationQualifier"

    invoke-virtual {v15, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "givenName"

    invoke-virtual {v15, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "houseIdentifier"

    invoke-virtual {v15, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initials"

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v50, v1

    const-string v1, "internationalISDNNumber"

    move-object/from16 v51, v13

    move-object/from16 v13, v44

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "l"

    move-object/from16 v13, v17

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v1

    const-string v1, "member"

    move-object/from16 v52, v13

    move-object/from16 v13, v18

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v1

    const-string v1, "name"

    move-object/from16 v53, v13

    move-object/from16 v13, v19

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    const-string v1, "o"

    move-object/from16 v54, v13

    move-object/from16 v13, v20

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v1

    const-string v1, "ou"

    move-object/from16 v55, v13

    move-object/from16 v13, v21

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v1

    const-string v1, "owner"

    move-object/from16 v56, v13

    move-object/from16 v13, v22

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v1

    const-string v1, "physicalDeliveryOfficeName"

    move-object/from16 v57, v13

    move-object/from16 v13, v23

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postalAddress"

    move-object/from16 v13, v24

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postalCode"

    move-object/from16 v13, v25

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postOfficeBox"

    move-object/from16 v13, v26

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "preferredDeliveryMethod"

    move-object/from16 v13, v27

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registeredAddress"

    move-object/from16 v13, v28

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roleOccupant"

    move-object/from16 v13, v29

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "searchGuide"

    move-object/from16 v13, v30

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seeAlso"

    move-object/from16 v13, v31

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialNumber"

    move-object/from16 v13, v32

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sn"

    move-object/from16 v13, v33

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v33, v1

    const-string v1, "st"

    move-object/from16 v58, v13

    move-object/from16 v13, v34

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v34, v1

    const-string v1, "street"

    move-object/from16 v59, v13

    move-object/from16 v13, v35

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v35, v1

    const-string v1, "telephoneNumber"

    move-object/from16 v60, v13

    move-object/from16 v13, v36

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teletexTerminalIdentifier"

    move-object/from16 v13, v37

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "telexNumber"

    move-object/from16 v13, v38

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    move-object/from16 v13, v39

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v39, v1

    const-string v1, "uid"

    move-object/from16 v61, v13

    move-object/from16 v13, v40

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v1

    const-string v1, "uniqueMember"

    move-object/from16 v62, v13

    move-object/from16 v13, v41

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userPassword"

    move-object/from16 v13, v42

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x121Address"

    move-object/from16 v13, v43

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x500UniqueIdentifier"

    move-object/from16 v13, v16

    invoke-virtual {v15, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "businesscategory"

    move-object/from16 v15, v45

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v46

    invoke-virtual {v15, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v47

    invoke-virtual {v15, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v48

    invoke-virtual {v15, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v49

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "destinationindicator"

    invoke-virtual {v15, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "distinguishedname"

    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dnqualifier"

    invoke-virtual {v15, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enhancedsearchguide"

    invoke-virtual {v15, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facsimiletelephonenumber"

    invoke-virtual {v15, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "generationqualifier"

    invoke-virtual {v15, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "givenname"

    invoke-virtual {v15, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "houseidentifier"

    invoke-virtual {v15, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v50

    move-object/from16 v0, v51

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "internationalisdnnumber"

    move-object/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v0, v52

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    move-object/from16 v0, v53

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    move-object/from16 v0, v54

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    move-object/from16 v0, v55

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    move-object/from16 v0, v56

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    move-object/from16 v0, v57

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "physicaldeliveryofficename"

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postaladdress"

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postalcode"

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "postofficebox"

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "preferreddeliverymethod"

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "registeredaddress"

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "roleoccupant"

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "searchguide"

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seealso"

    move-object/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serialnumber"

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v33

    move-object/from16 v0, v58

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v34

    move-object/from16 v0, v59

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v35

    move-object/from16 v0, v60

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "telephonenumber"

    move-object/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "teletexterminalidentifier"

    move-object/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "telexnumber"

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v39

    move-object/from16 v0, v61

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v40

    move-object/from16 v0, v62

    invoke-virtual {v15, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uniquemember"

    move-object/from16 v1, v41

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userpassword"

    move-object/from16 v1, v42

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x121address"

    move-object/from16 v1, v43

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x500uniqueidentifier"

    invoke-virtual {v15, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x500/style/RFC4519Style;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public encodeStringValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->dc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public fromString(Ljava/lang/String;)[Lorg/spongycastle/asn1/x500/RDN;
    .locals 4

    invoke-static {p1, p0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lorg/spongycastle/asn1/x500/X500NameStyle;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object p0

    array-length p1, p0

    new-array v0, p1, [Lorg/spongycastle/asn1/x500/RDN;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    sub-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v3, p0, v1

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public oidToAttrNames(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public oidToDisplayName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public toString(Lorg/spongycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v3, v4}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
